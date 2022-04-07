Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1993B2564
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 19:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649361118;
	h=To:Subject:From:Message-Id:Date;
	bh=APm4yqT/88IW8AFXpnxCAvtEbLvm6KFLZinySpazUNc=;
	b=Zb2TGqgjzZ7b89v9cScSC7xEGehl131JIPszkFXhEaU0CIpdKaG5Eo4hSzthTekM
	c3Nr4n3hcMf8PhR/ZQ7LawclWyLmu6Eflr6vDE9IIgSa3EsyoK8NgvGRuJdiCVB3wcq
	Oea5jmo6maZwRugETHmDes8E1z289dvcWck3l+WE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649361118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=APm4yqT/88IW8AFXpnxCAvtEbLvm6KFLZinySpazUNc=;
	b=Sry8S1Yh65bVczs2oVvg2pbFRvk9nupspt7Ur3qjdKGipWRmAZjbtiudYbpsaXL7
	zEbM9Yxl/bD2Q5PmN385gHtpty3U4qbFQ2IGw1mcAa0I94MkeXZ+U7zN8lSvLozlKMh
	5FisnUuBF5IQfVvrxbbYlP8sJqOUPjdca2kIZtYM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800595644f-1c8e1495-c863-4d72-8400-80e4bac2355b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1a7e36dce8ad1189bae306bf83263893ce21b549e16c471c5bdd0b9985e69e7
Date: Thu, 7 Apr 2022 19:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649361118
