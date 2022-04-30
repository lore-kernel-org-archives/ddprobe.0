Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6631FA4
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 14:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651330738;
	h=To:Subject:From:Message-Id:Date;
	bh=onnHozC8TY/U9O7v30SgHdLJJkCCugkWuKcsUWnGdGg=;
	b=APPVuLli0uk5CmR348QHBSUItpHmOczVRfkcAzfwWSPJJlYGyoffuH50N7+sCTBD
	r2u73qxaS9gLw4cMaYy9jRqxdpUGvh+9iWdqqNyON247c10sIMmk1coIt6gsmF7SaX6
	i2+WN1aEfHaOkOIShx7G0BtM7lLH+AevItmfRlqs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651330738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=onnHozC8TY/U9O7v30SgHdLJJkCCugkWuKcsUWnGdGg=;
	b=Wy1yXrJF5NqjnXv2xOPzqJTCb6jJ0Wku7Kdxez9GrsQp33TEsDnxhCvCR6ADtfO5
	YDXwOxZiN7rAT3EfDJE7eOh+dK/vk6AXLjs6acPvnW6WnuOdmhmSFpPyq2xSzxBZxUE
	R0r/ryghOJRkiTgO9TV77HsYxnqiAZ4gGGRM/cBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807afb6866-dc4fd6b8-8708-4563-8e57-ee85cdf0730b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec67934eecc05710c07dfd2b57a123b11681a9afd21d7f30ba07876e204a3eae
Date: Sat, 30 Apr 2022 14:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651330738
