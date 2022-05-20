Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FA33206
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 20:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653077279;
	h=To:Subject:From:Message-Id:Date;
	bh=3gZVqIWbvDKoIBpCIHY+oE3fu9PuCm16FpP2wCUMMHk=;
	b=XG7usST2wa8JWfkVRsBbtJZpgHXurcepEOeafpwrwUsiVl1a+cjeJr616lZhrHKl
	xskmvXDOXPTCRwUU72BzmgY3MZKNj5RAkSaYDJV9ueJtvGSUxuS4i6gx9LfQD8dO0K8
	9nXQTkDltvxOUH09ZmTkJDGbV5Uw5dOF0yFIBctk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653077279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3gZVqIWbvDKoIBpCIHY+oE3fu9PuCm16FpP2wCUMMHk=;
	b=DsKoxGDOSeSDSxzHXAwSyj+7TLfpetu8aES8sa2tXB8pNTZqTIJwgo2710RhT6lu
	CkjC23T/pzWxX8biWVoftvs/elbxVZFByhwEBKmfnQHOqtMclhbWHz0c4tZks4YJtFP
	AHAi9BaTS3ctUsaLkEkbEAUPiix9BioLkXewGRAM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e315829c-caa57e34-4f14-4d51-b78b-5312a011f2d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96f3afa3abf366606b42ed33bc692882596728d7b92d5c6e89c72d61713a6aac
Date: Fri, 20 May 2022 20:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653077279
