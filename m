Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4938C48B7
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 11:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647601285;
	h=To:Subject:From:Message-Id:Date;
	bh=A730Sy8HIeCjzdmghccPu7x8TOuY7BIs0VXXH6ppuIU=;
	b=Vh0hr67DEJExiLlicBt8+92iNx+m9KRHvd7efPxXEMibbrK0TMwfHRiA8X/rolaC
	Uuo/94qbIWzz0xRmkPyyOjiKtgnGPUbSXz6ixpPalMxoPFelCKAPVB4s/qdn+uO0qQ8
	2BSbslv7oqpjqHvK/xXlCEDmWPzhu1eGCkWcwDBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647601285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A730Sy8HIeCjzdmghccPu7x8TOuY7BIs0VXXH6ppuIU=;
	b=fRHHT2UIK4xuSAumm+WY8A4fIKIlivhPdoVteFlXqOojE4wU3X2Lb82Kx6GoUJ+Z
	epsWt9yTABPqDaa1x5NxLhjh9KsDC3E0LRIm8Jf8sjV5S1l2WrdTmBAHSQm30yCRRHo
	G2+b6ROhZGzparU3cCnEBcbAls/JhvSrRaZN8e5E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9cb0768c-04c5b796-a3ae-48c1-be13-9ba4ee0e034e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60872acf16776bfd4c37a9088124134272925de314ed113444985f922776d5f4
Date: Fri, 18 Mar 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647601284
