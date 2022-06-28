Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211AD257A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656415012;
	h=To:Subject:From:Message-Id:Date;
	bh=056+i+s+McnoWWx1FjYXqXiyBBNh6EnyAHL0RE06owk=;
	b=NqlSi7M8MPVZALQ2ZVTrSw5ik9DSN66J2TwFYrE3MBirM2VxSo8445q00xJv0l7D
	R//52UXmkXzlHWaXcCLqLqAmBGbdvLapsBahPQxbKxTY/EBk8OYgR+4Pt548+NUhwfE
	Y2rUNf/52Qd+oDhZTLRAB+Ciom5dngTUhISZwvaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656415012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=056+i+s+McnoWWx1FjYXqXiyBBNh6EnyAHL0RE06owk=;
	b=Soy60jA2JhXwKstII8byWE47R4+Hyh9Y9hbky/awJ8yi7i2b42x/XXPpo4VN8TQW
	kov8Y/PiWqGdf+80fYLkkAQ4ADO5GWGBsItQ9NHLq+Vz35+jePZqs50SIf9ZaLKg+zZ
	/NeciWqX/1o7pljGBgH932QaQZQCS6WvEO9j7sng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aa0745dd-469f5d83-ceb8-4912-af8a-6b4ffce4f739-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 401af7ee5e63bfc2ad86630e98d46e7a03b29c71ec31156c9883b5e0a08d2aa9
Date: Tue, 28 Jun 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656415012
