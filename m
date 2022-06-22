Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A90B3C02
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 20:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655928539;
	h=To:Subject:From:Message-Id:Date;
	bh=oAZNuSrUzU5bZ9Gix21DgFylcGtSZyOKQUay9vMgsqo=;
	b=G/LGgRqg5SLhJERFH158DUNnLzs6cgelbSTvKEvBj2BBTMUWy4ddKAUyxTP+C6Q3
	5XN5QXPFKTKxPIWbc12UXaEDZ21aR9BtV8eEdGNivHK6d0dfIGGRMSb92AHoJFynS7r
	9f1LxJKLxb4bOVH38cgRewuL7NVaaPjdWVO+f3z0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655928539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oAZNuSrUzU5bZ9Gix21DgFylcGtSZyOKQUay9vMgsqo=;
	b=BVYT6Vwx/H54OsQNK1xOSwqhVg1Fh5s2z6BsMNsFDzolKr7OT7hLrRTth6uLzXdP
	QcO/S6AwKbdkPDc/H4or3PPaPZrjNOd5nKYIVQ016rMKmQOrzKFrAIIK+zdM66K+ruB
	fIwa0weJ094fz+Q8jygrnKIelXAOd/4tQUSiPIz0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818d0848a3-0e2b11a8-6bd9-47c5-9a87-cd4aeb2e0de1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4f949bed7a2aba7f1bc79ec7cae5c5c1c015247267d5c4d662f8bb5b7f8ed8e
Date: Wed, 22 Jun 2022 20:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655928539
