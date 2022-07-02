Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7BD23AA
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 15:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656775612;
	h=To:Subject:From:Message-Id:Date;
	bh=RMgtSLmELuXc8bA9hiy7x1raULgqGI28BoazkoFUt8c=;
	b=PfPh8cRHdwkGwrZ/38OasR4dW5UOPFG8Z8uhNCMHHlBXFR/d+4XiOWKzijenoTtz
	9FOfMC7JFerYflscuCsZqf1txGuwNeGQv1y4W/FuVO31OBD4IhrB7rlYtatCz0ymapL
	S8BL/h+4JD0M5/QV4IcqFN3YBBPcXfN2uw13+Rwo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656775612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RMgtSLmELuXc8bA9hiy7x1raULgqGI28BoazkoFUt8c=;
	b=NKGvdlDVuqTOXfii9UXeci2Q50QHg6KMtEKAvLRYlFq4Ce9PKyogtSlRFIuVYYRy
	fW8cAxTp5WbehylH/ZcF5Yxr6viKqTcwitGbaX2Sk+TOcBaOunrMA6I02SnIdyJ54k3
	WwRiSifQesklnBD5LI99i+A+S9iBXeoUQirM5XGc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bf859780-3b7f4c95-a718-4ab3-8eaa-95c2605d9075-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71cc57fc3fc392c8f1197a73059adf15f2a22b082ba5c170185e6919a140be7a
Date: Sat, 2 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656775612
