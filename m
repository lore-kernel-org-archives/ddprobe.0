Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577CE3D78
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659913252;
	h=To:Subject:From:Message-Id:Date;
	bh=idqnS2MFobSX8Z+cb+KMKIYRGjoVzfIAedYrEhaUKy8=;
	b=E4BXszo8WI1EIJj47ozKpswLGazkcmXXGF2P/J0GbiFtt9994g3ElE/RpbfOgHq0
	8g95iSga0so8cqofFh1Io8s4JsCYz+RdIaPss3v8dlCAYYz+w9/VCHAYNcDVJI73GRw
	Bxhg9UmNtyYXKaRU+b1KoPhBuynMOlikyPVvbCPE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659913252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=idqnS2MFobSX8Z+cb+KMKIYRGjoVzfIAedYrEhaUKy8=;
	b=lDJMyFP/d8MVBpuGTdTk4c0Ehj5ruS1M4z1GkKVRH5rvGyumrktEupTLWvJ7Y2P/
	ahiJia9+talKtwgFK2aoaMMDTCNZWHLWRQYkuRwY1eDtV47ndUh47VQ0MZ/xs98PTHJ
	jUZhw6KC+ziHIG40XR6kWgBSkW5PPPkTVh5AzKNA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827a8a2eed-548750a6-cfad-4795-989a-d9fd305a1204-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f5ae84f9d7241b232f7f5f8729e1cd78d1bacd246ec4b9c69208f1189067735
Date: Sun, 7 Aug 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659913252
