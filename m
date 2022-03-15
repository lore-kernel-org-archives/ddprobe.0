Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85A4E23CC
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647366384;
	h=To:Subject:From:Message-Id:Date;
	bh=04qgFXp/CIwobEZiEQxIhjWdbrl7sAlfXt6/KIw8yMg=;
	b=Zo3ImkC0QSc+OLDTq7GvxQpmLzdWR1t/LCIAt3kJUSpDOPeg8zJ0w682qvPs7eiA
	k90l9gPCQ7aZNgoHlOxQNMJDnlzy2/HLcrba2mC3r7znXjDmfnCbmV7U5ElH3PNbtyp
	ssn4egaR57m5XOkTGAOze2BPxUWvX5ernt6Nid7E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647366384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=04qgFXp/CIwobEZiEQxIhjWdbrl7sAlfXt6/KIw8yMg=;
	b=SrAo6dfbCOhzs+eCXhUJWJajDWqwN5OAOFtOejKJuAAkZB1oNmeTXlWkKpjytlV9
	SzW/Zi1GBLjMp3PMvTDaYD2XGArdOxuWry7bZP8IM+0HU5P1ABXaexRBZT631pRu5G5
	jl42UR2aT9S3ATXMONwsfE/tXBf4JIBhSyOoDCeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8eb02c82-d4061162-82c7-4e18-aabe-59fad4a4a262-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa029db7e0f84134595326f6be326f5f5be6d5840a0dd5716a4e45155875dd89
Date: Tue, 15 Mar 2022 17:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647366384
