Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CF6510E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647626785;
	h=To:Subject:From:Message-Id:Date;
	bh=dF/4+2+VoAaXGBUjTfkk5CUfIW9gZrTFuujm/viYVh0=;
	b=kuwefAOrt8tAFzNRqk1GyanR53wdJSubaOY5Qzbe/jgtHfa9dl0MYIW+X4wKEGui
	eKFEjP+YEHEtdCErqWwrQgrie2vdVXn2OsYv6aqHPTDDjlLBwu63p4N4tlWO/cbO6q6
	tgmlLUFOR+iIeOmd+YS+btQdm6OZhyzY4La1QPN8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647626785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dF/4+2+VoAaXGBUjTfkk5CUfIW9gZrTFuujm/viYVh0=;
	b=dAue/M/ZeMCoFA+bBqUaybM23r5RsN97w9QF5n1hvWwU4RanPgZal5289BMkRm06
	yvAhNZ9rNQ230KwNxeH+Tr/v30n0Cbo/cldOqgs9awmUxleaUSRXkAk4vMiAzSAOJg8
	ghFsTpIoOnJ4/T/tdH4dYAJCGs+p9i1A3x++mewQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e358ff5-7461f60f-3c1e-4617-8fca-c70a57ea5165-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 138382d03e6bc8126f28938930c77fbd6c3f894f255b12ec3222deb9af6f145e
Date: Fri, 18 Mar 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647626784
