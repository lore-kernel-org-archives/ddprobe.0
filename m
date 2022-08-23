Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640C1A3B
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661239252;
	h=To:Subject:From:Message-Id:Date;
	bh=1vjb8iSLyBTHx2JxtlO6chIr4Oc+T7V2YCt0ri24zDA=;
	b=HLEKmNTMJ9au+zPHrySUdYOAj0N1w/BW5cFk1m+rCqft6ZEm9RcU+PH0VQZpMHqC
	UwtWRTNjQ4WLHiLrzLn++Y0KFb4Lz8+6CFvYH4Eu+IkO47Kxu37pmr4RO4VJOlfIyb9
	2gw21A+D8bUnCz5v1YiaQkimtUmdIxdHEs1hSEGo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661239252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1vjb8iSLyBTHx2JxtlO6chIr4Oc+T7V2YCt0ri24zDA=;
	b=DZB+UogKEtm3p7IGKJ/hOFLkEe1iYOweu1Ug1S6e2i53SocuoSV7wcQV5iFUBM+9
	CKRHBCI5bRfAxhVbJeJ+FgAWrjVRfqJNwMUUgt0YBTWAfnwd3zd8l++djQCiHg8p+Yj
	RqKs+n9rJ4x8lSXYCZualnH8+SCKV4muXZ8njgFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c9935656-f06e14a9-88c2-4985-818f-70037e2403fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b20fcc3ec4c680b5bbbccece09f9a66e037cbae824d0dbe94664709b405922ba
Date: Tue, 23 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661239252
