Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B0728E9
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 15:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652197559;
	h=To:Subject:From:Message-Id:Date;
	bh=klNwHTeoTLDZMYaYGlszCTJpYaXuKfdTBpc2gduavHs=;
	b=bDN1aSd83M8eMmXyl7YuCgNqT712v4EvuJaH/xtyp9pGvF1TPWVs3HtHI/k9G8SO
	6V4HlIQ/gHNpCnYtQy7wAN7JucZUd3T3oDzwFaUJDbdptT3UfXNpkyRQGMgbbSS6e8J
	f7F9ASyyNFAw0NbF7uXHU/YjZSWi6KXfTU6mUe4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652197559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=klNwHTeoTLDZMYaYGlszCTJpYaXuKfdTBpc2gduavHs=;
	b=a91DiOfwZ+nH23dTtv1AXAMcowW1ZVuRuwgaDUwQ7yYRDp+ItlcbgpWtmwWZ5Fjf
	42GP/CI7Wptoh+SFVLV0hoBmzJajYSVSTbQnIaxBSdAo26sBdTBRDH0zzaIhrNB398s
	kdqPCBGUWLe84fL2liZBnzALyNXKiABOdjfAZHbo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aea60c77-de8776a2-7b77-418c-abad-bbb5d4e06be2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28322dcbf1f3c8190068b3c393ff3356678f42149ea6f21561edbcd6d00634e2
Date: Tue, 10 May 2022 15:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652197559
