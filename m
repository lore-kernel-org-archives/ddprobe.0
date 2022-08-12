Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5314A03
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660332653;
	h=To:Subject:From:Message-Id:Date;
	bh=lV8mqNPEuZpRE1jf9mTKIMFOrSAef/3eDS9M80A7eJk=;
	b=f25Oto0j8gY7V4DM7OZIMkcRmPO9gUoFioK8RrhJ0YjGQUxz5BWzDEaYYojWPAU1
	4Ce1gJpgAnKQQEW9PewM0mDcg+JAYdhQFeTJ0f6csRHu0H0+85erLpWwGGgLSfI/Ska
	L3GsxlY76uC77YYBLdbeoDpwhn2VQgh2qULmhN40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660332653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lV8mqNPEuZpRE1jf9mTKIMFOrSAef/3eDS9M80A7eJk=;
	b=N6XKEYz+Srb5no1dbjfMhUjtsFmtOS/RrnsRgVPCs+MXDkHQYSfMy8WDwhEH6ATr
	UtBfiRY7FNWMaVw7u1J/8GzteB4U+jwynS5BzpUbvigAWAkzhAKuOQTrsaqZn9fgZHG
	j4ljIsrh2ZLl4VzOZfcGiEQp8V6GKWtjCrLUPMek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829389b85c-dd55c82b-7ed4-4b17-ab62-d3d03d48c78d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8244e9a7d63d851582791462eaa85dc1c618e0246bb8b046b2f56ab9cc8b5211
Date: Fri, 12 Aug 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660332652
