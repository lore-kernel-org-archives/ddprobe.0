Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138927A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 10:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650794818;
	h=To:Subject:From:Message-Id:Date;
	bh=EtrAVQWlN/X60ewK1/IaTP7hveohfcoPdfQkk+NRrcw=;
	b=cVZXJ9gaFXYHc3F+D7tNi8jTtbBmxEJ0TajBjSspq1YZnLYLpeqCsBjXCiJmHYE1
	mmIzUOC4s6Fsn0Oc7qLiw99Xh9rJ+80s56PBu1zKpBQl1+3N8aQLwMD2Whek4D8/+qL
	bY5WhwlM0KpUOlteQ5iUCwM6KMtroognDP6yI/nw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650794818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EtrAVQWlN/X60ewK1/IaTP7hveohfcoPdfQkk+NRrcw=;
	b=PIIAB8ya3NmJKmOZgIedWYK0R6T6YdmBZQZk+4TUqrG5nElRUVdGt8Xw7BdRJ8wP
	Kzy7ROViiUifKMXfLDO/L9sOnSllcfWWyuWNjxYyxLalRkTDW+lBH9uDjBZmExoH9Aj
	q2c0IU96u4IP9BlrAVSFwY3IWlqqmjqAmxdQ2eIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805b09eaf4-fef927e8-734a-484f-b46c-75032ea459ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c3be90db848831827c00a5ddc3da93402b6dc23bba103d0f9a6b3e88037ea43
Date: Sun, 24 Apr 2022 10:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650794818
