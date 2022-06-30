Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B25D7B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 17:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656611812;
	h=To:Subject:From:Message-Id:Date;
	bh=2czgVjVvslFN853XNCHzWEMO1a21UN36XRCLfnDZ54E=;
	b=cTmHuRDvJamEPt8ikied9I+dTsqhCskARc00eaeBXi5u16V1RGfzgNIDxym5JCLH
	fqyZLbT62HSlMEuah4dYEMEDhowbbCEYVol+SS84dzdEJO/BUlJdmL6GL5RIvl2BZFc
	JhxV3GLGQru//KHaWPsf+8tMMyplad4yk0S73CvA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656611812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2czgVjVvslFN853XNCHzWEMO1a21UN36XRCLfnDZ54E=;
	b=KHqyfDTYXvfP9YETy68HLr/Jzk8RmHT+mlNnoKoXREvFUTr7bJVeBX54rRZs6BMk
	NGBjlqaUiMcxuzS1c7PENacRD21P1OafsW4DVrV+9UERlzSXBwHajLCr/caXtskWPXW
	sRPkpQbqZZb63zq9mhI5iI7oX3bRGCcAym2LwFw0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b5c23466-f274e60c-dbb0-4dfc-9490-42c9ce9b6aa4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0dfbd3c5accb2855417dd675675c6a28cb76b1f209b0047bc4eddf98969a2622
Date: Thu, 30 Jun 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656611812
