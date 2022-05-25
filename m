Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050FE1368
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 18:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653502619;
	h=To:Subject:From:Message-Id:Date;
	bh=Gy3DJ2CZjOrG4FmENVIatrKnLBZYPqm/9aOPBtU/voE=;
	b=AGQUQB4U3ajUK5oGtAbd2WjXJVuwZc39/8AapogBOd8BGvGnRO9aZNvm8Tn0YbvT
	tjaxjSxp/Gd/sjncITu5IZT6pQVLNgeXxpzeyC5t9YH6uycMh/8qBOxMVrTrCKm44cT
	E6Zhbi639LjIFvIzQl50/Aw8fRZGXlotGXVw+Om0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653502619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gy3DJ2CZjOrG4FmENVIatrKnLBZYPqm/9aOPBtU/voE=;
	b=HmyPNIEPvIJOCJ4XRKVoEcR/FcCm1LUcmiia71nVoDHuTRaw4MgHk8nYI6F/bPoJ
	7hY8VU5uKKAkzC8ow0mc0IlNgud6yHBT5nmSZ7U8lW23qiIs/mTpEO/Z86tjyabWhCC
	Yb3USgTnd7ibsbDCOg3UWDTNQkQZArrLGkzCN520=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fc6fae76-ea451fe5-ca6c-491b-9d4a-2b487059fbe2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3dbbc930c58afac4cb94d57e4196856548a545fafca6949c4c43aec20d063550
Date: Wed, 25 May 2022 18:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653502619
