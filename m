Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D8720F3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 08:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656317212;
	h=To:Subject:From:Message-Id:Date;
	bh=0uqLfSMwfiuXQCfHR7ssAyCRsbfvSjgoDPdr9ccNZTU=;
	b=iCnELMsxypmkxfF72TyNUiIMtAxeC02piGSR9w41Zt556XgJqOPiOI/8F1aPyd7+
	U4Uw/I/gTbmjpucqIcSpL2RgFR+yzW35D0WtmevjC/6jDaUnpQP5ss4m1Y0+op57zyM
	cccthinihaxLEJ7Yi9iCrbcLZjG+XeAjTT9lByG0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656317212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0uqLfSMwfiuXQCfHR7ssAyCRsbfvSjgoDPdr9ccNZTU=;
	b=LO+oH2k3zkxvgVf4rmVIXgCUEOLvu+fHCmpmxP9EwChXZBALrSJHXcEMbQARlncE
	vxP9sZpGZDMKVBRnHPudm/Wae6Q8hHkIhc8aXBBCVOWF0N3n4I3UOJ5vpblwYzxBO80
	lucfKtrq88RnP9XCJLgGBI0Q8NfaXIfyaQr1g/uQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a432f6b2-f0d9425d-8607-4961-8796-681746b515ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6572dd5f0852a3f264af55bb8b5b51d176b2d0451551cbe27c742a262639ffcc
Date: Mon, 27 Jun 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656317212
