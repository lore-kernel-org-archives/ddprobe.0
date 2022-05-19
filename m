Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CC32CAB
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 20:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652990879;
	h=To:Subject:From:Message-Id:Date;
	bh=ZuGBMpFS7hpt36n6CiihUo6xZxkabgZaKGydFPVdV60=;
	b=eQOiM2RnP7RovkPDt/ru/hO6wLXMLkpgYMKt7lrGC4Uh8/jvy8L/KM3xQUEpo315
	K0s9EIgY47CC7Ihr98X+6u2u6gS0lmXkRU9CP8zbDwJ9rdynRaaGDrjPySskM2dZvmF
	4LBc1Fh/6lftie9Dow1dExx0RJPA5jCL0+es6oRU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652990879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZuGBMpFS7hpt36n6CiihUo6xZxkabgZaKGydFPVdV60=;
	b=bFcenYvivDXq/gelk/Scq/u7+kmzHDPNZH5zlMUIh2gz1+5lrmSfaJjqZai0OUhb
	nzk6EsEnD1Ju4BewkFCCCARtnF9Q94GPF/trb3RwzBSMEnHZwh9pTAx2aT60s7Csqy4
	/fra7rs79ozijkPHlmBmqmaA3T2jr/9kSlv1dixE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ddef2625-ff871c3b-8e1f-401b-b082-5a221bb4e29d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea79c0e2d67aeb75802cff3bfaba93b974d41931c3ebf6691d4b8593ba40ec00
Date: Thu, 19 May 2022 20:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652990879
