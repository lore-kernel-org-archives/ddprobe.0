Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73F874378
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647534385;
	h=To:Subject:From:Message-Id:Date;
	bh=JR4w+2eDNiPjU66WoR1cxlz7cPIaznHJWoqXkiZ/4eg=;
	b=lvAkVB9itrZcc+ktHIfa9HrfdUEPdPknDyz0zfMEr22EqVhfgz7Tf8bJ/AEE2Adx
	RR0E43SnfoEWF/CQCmYbQm4XQYE4JnRn5m8nIlDyn5W8PtnZdJ+RvJrymAAuqjMjFEB
	b2Gj4LqEsXuFsEN00ro6l5glYpc5u6SkivpIPDq0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647534385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JR4w+2eDNiPjU66WoR1cxlz7cPIaznHJWoqXkiZ/4eg=;
	b=Sv66H6LoGk08gRSn8NbqcZPG3ru1gKOv8+s6/nHu3SjcLoLMhaVHbi7Irb3F54RP
	cq0WsBTPbLqVDpD+TqHaM1u0R2FhQZFjSA7fXScSqRZDT6oALZ1ZAmb1sB0hrcdCAhP
	AwgC+aEwzfz2LwnqcjW8MS427aQKN7Y94C3BhBdg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98b3a6de-e4fac60e-d551-47de-8acc-954dd189a5f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f93b110cfdff3e5ce4dac7a95694beb605322c07e14280d1508143adb9e28c5d
Date: Thu, 17 Mar 2022 16:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647534384
