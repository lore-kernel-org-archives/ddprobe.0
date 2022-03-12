Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56635614F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647119784;
	h=To:Subject:From:Message-Id:Date;
	bh=YIF8YKbNW1wTZj0+c/2sTSdDU5wHX+rnf6V56EP6C1o=;
	b=metR8ZVmMJDfYjoGU7XRtBXBiqZMJ7Ur8Zi6rJRQEolwQjU6iFIiZSdyNNipUHZP
	4QJ0iltbtag77SpHnVrS8502cEVC6kB6P8thoA6T0Gp4ZXAXyV50ptE8FxZclNRSTc7
	TeZf3rLY3YmutOChG2x3oVDze7Y88iVZu3GGbh9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647119784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YIF8YKbNW1wTZj0+c/2sTSdDU5wHX+rnf6V56EP6C1o=;
	b=Aozr2iPqKR9O+uN6WumF7J1gbKwv1/DarsMWmEHJAcM35KHTHlSs6jNfVDjyiena
	GGYBepVKII27sJMVI/KTrrnn6TNtMgyU3MbYNY4lwKL3Awe/fmQFu2rIaYf1120OPQ5
	E5anFu605d+munJHQQle1omRGsFyXnLEjO+rjzBM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ffd5b35-bd5682ee-a287-4e7c-968f-6b3f4973b225-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 515178f7ee767560210406116ed887173c0cfc9ad31aec1354a8555c2503a6d0
Date: Sat, 12 Mar 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647119784
