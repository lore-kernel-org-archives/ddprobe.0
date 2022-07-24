Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B7C33FA
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 21:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658696812;
	h=To:Subject:From:Message-Id:Date;
	bh=zEm3S6/K4YNhPj+64lpWX2gMGISV1Xe08tL26hcw1gs=;
	b=TZj/rKMFhl9MVxYNCpYbDkUSR1/HsCDUQMo3uILDK9MSPmyVbbmArnxBtuQ+oOaa
	yLc66Kp7dWE5SQcch3m0+GycBqXOUoLAfSfWDBghdPcRBUVfSepKjo0gxgBUNfvzzja
	xk2ac6zaCodQI1r/c9QkdoQhc1r6GZlEyeQYyL/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658696812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zEm3S6/K4YNhPj+64lpWX2gMGISV1Xe08tL26hcw1gs=;
	b=aEgKIheLZVadS/7W2uDv/WUlKGaYCuzVUN8cv1H1yszUAJdWkBOmW57bDGl8BhE8
	SgjJKvnY1FmMWXsREgXDM6KrvFKAOD3zLWLMxDRs4gzLPS9MV3nBjk/8ISfMrh9zAu+
	5EnV6bazxO2cemoGmLqc3RiTGT/whEOauf00Vj4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823208c6db-d390fede-963d-46cb-a049-d1846caf9348-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddd4a4ba88e001f57fb43434d7fdc57078425db709ab7c418ec6f14125b68495
Date: Sun, 24 Jul 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658696812
