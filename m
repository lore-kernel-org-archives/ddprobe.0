Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C3129A2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 23:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656201412;
	h=To:Subject:From:Message-Id:Date;
	bh=fHGTVMjj4J35JuxWyHelVYFfyJ2cshTeNd2HKhMKwHA=;
	b=XgN91TIWVIjvZJ9eC59Gd1tk5qSdynxgcho1jfSkLNIAJdE33NKW6SN9JZECen9a
	CaMHhXKkbZR/SitxgIsdilXPOugVt6YGS3ZWL7i/BofqJvFADRYY3WICs2sMODDmpQH
	V7A1HUDyLSLpFeTwz8hvF81pFbJzAd+zaLgppf5Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656201412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fHGTVMjj4J35JuxWyHelVYFfyJ2cshTeNd2HKhMKwHA=;
	b=ak/Sm4FhXRmMSf/SeXLtOtcWEPxvDo9EROWYMhKJx8cjEEIxnLJCRW4MlMnhHpgt
	lm1Rb5khOV3vbJ0ZXJdYfxPTX4snpF9McU72oAQURN6Irb70tRob0TEQIlJzPRDmWu4
	54x/o6AoRutaOsxuJjjRv7+dETVNdah8ih+6MK1c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819d4bfedb-3eb45685-ae94-4173-b59b-3fdb4a2f02db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32f42ba9d4c0921d37b313905423a3c4a2bd35a25ab9c05bd6848761599f4835
Date: Sat, 25 Jun 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656201412
