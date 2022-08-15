Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2001398
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660560652;
	h=To:Subject:From:Message-Id:Date;
	bh=O9D1XGJ4mBW2FWoWsL3er4VrWmTFYaqZb+7So6MFi0g=;
	b=XHa08KvS59H7T5MfSOAyStg7CMkos0AhhQ+CSNqoRIyuwsc9DecXXtu85Lx9sc1T
	KjDFHuvBDkgVLKoTGkjMfltq5SarBwrnOYgWWo4ntCWcqQTOZAqofholHndSP633QLy
	stn9eDfZHqWFIguGXSmuA53EJDpUBDEFDn6yRWQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660560652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O9D1XGJ4mBW2FWoWsL3er4VrWmTFYaqZb+7So6MFi0g=;
	b=kXvB1iIPoKQjCrRaii+NQVAeJ60ybnGRWAELbPWMFacwJpiORtG18lbsPJGJieIH
	8TSLIf7K+R7HYt358mpk5mOFcVt8SRlZPa8tSFdZvxa8dFJJJFtdpjwAL5p0dTjgDUJ
	4j13IjE/bJoup2kQFefwg1debViIr2KVz6NLLA9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a120b962-57d24948-dc6e-4b9a-86d6-2804c8ed4838-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afff254879cc3d0441a529153d8b307bc67e31a99c6b39093c750046d9bb6da0
Date: Mon, 15 Aug 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660560652
