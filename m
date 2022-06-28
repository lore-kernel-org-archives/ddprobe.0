Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4FAF3C05
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 15:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656430612;
	h=To:Subject:From:Message-Id:Date;
	bh=tFkAoB2OWGqYIZmhFaduy7/CvwuL8sROrQFyfb0E4fo=;
	b=HEFHbSgUd9X465MPPVcnDHse/2ny80eRp1TUdH80vJsHfYM5+GL+BKCWooPyN4KN
	UxQMM7eLeLkVvAP9WeYshAdbndcGd6cOntZ5qZctyI8FMcamzQy4Gt7q0iejeH3vfXr
	wVvsx/zBRLXpITF7yTVwr+N3byA02z1oxdqRuahs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656430612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tFkAoB2OWGqYIZmhFaduy7/CvwuL8sROrQFyfb0E4fo=;
	b=JSXby633OksyAJrZsVyVav7RnuKpoZplAii2V6vpCuqLsyLhe4ZXnvFas2/7IQi9
	6k2qd3Y9UZPYDyd15i3NemVubUmqAtC89ywnU+hyE3l2JIwDlJRm8ODd7WGWCsK/xKW
	I/AIxNNTm9qWjOxO/hsNQ9wbt5mA0JFJswOGc3nc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aaf54f25-e7c5e564-54e0-4d92-8989-8acebf8b4b00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a5f024511ea4765b26ff1bdc953e97c2997dbe5b68d049fe98773ad59a32dbb
Date: Tue, 28 Jun 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656430612
