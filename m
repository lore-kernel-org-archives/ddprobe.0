Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14014A4F
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 08:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657354012;
	h=To:Subject:From:Message-Id:Date;
	bh=fGrrY5u1VfR+ebN/JC112wnyD5shPLGV61I5P2w6Xsw=;
	b=HWZimw7Ja/KVlJTGXfrviX4gyaSoGQab98J/7fEEJt6/5vKPJUEfGAXq5pI1iZQs
	qsTzvfCflUqRvCDsfvYvA3d+mdBRFe/NN6TtaYMb/TG10mNmW45dwC9DfCatHNQNxhQ
	fS+06cA4cfyzVEhE7d1HcOHyNXTZlU4Erv2R52ko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657354012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fGrrY5u1VfR+ebN/JC112wnyD5shPLGV61I5P2w6Xsw=;
	b=Xzdp9h9GlV2swx7dgv2r69b1v2Mp/iQ+foiROUxvQ4wGqgdDhIy2uM08vf2SYDuF
	9kKrSEJPP2fmW0Vg9E82WGsXV4sllSfFV3tAV+fYZbQp6K7unsZguAus91VZxfICXwO
	69h+DGrVCFSb0bV1hXDYWSfqcnJo3imHWVz6mExY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e1ff464e-32af5870-015a-46aa-af22-f4f5e70e153b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b207a623ed8b6af2f1728e42d32e83e0ceaf56490cd0ee29871325c8938e55be
Date: Sat, 9 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657354012
