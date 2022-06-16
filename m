Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166147E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 02:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655348399;
	h=To:Subject:From:Message-Id:Date;
	bh=oAkZtPgbatma7QpAvKDXYYyrTeuUCgFv0NQLlGZuc08=;
	b=SpFOFHoBwcl0nurcT9GaQvvdWAjDQV7Z3PacO7CiNIJB8QF1x0AuVyd0z/BT50RV
	1qj0NzXVF/KG+pYEWvcEAyw+2gN+ixI0A/cbjosdpRvch9C8FSkl7QQFIdjp48y/JiB
	h2+BNdOFx9+acuvw+xw3iDB/YG0fhBOB112cejUY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655348399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oAkZtPgbatma7QpAvKDXYYyrTeuUCgFv0NQLlGZuc08=;
	b=VSDqPr2eKqOcJyjpAKIi/PvF9gF9EIxzA5rkcRYXa4JcMzvzrrF6XdRaMOEkklzD
	xW5ICFl3LnrQnX6dt2TaiIbDGDSgHorM6DIEkdbJ+i+1SzshvTcjgtfxZoQ8dNBt2qX
	Vxs13OjoFPyHxw6khQniTbynFWDC/flOxxQIz6YE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816a740c65-83c19035-7a9e-42c9-9ec4-205bea561095-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3cdd8d8e3966a0ef5efeb794ee8f4b0fb516e0e43ccfc465c5a2afd37c4114c
Date: Thu, 16 Jun 2022 02:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655348399
