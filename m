Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5A17C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 12:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654605899;
	h=To:Subject:From:Message-Id:Date;
	bh=7ylU5UmZ3WUar+tzJCG10XpJ7/z+2vSJmssgcA9RSA4=;
	b=V14A6J/hMa80IbouHgXl0rbP0tsp6kZOxOnixwuPj5fb0TCAddi8AR1WoD6vFdyn
	D3uSjng5SH50I4QU7ONUtEADNo76ANrHYb+yYxXKuarIw0TWdMSBNIRR2D/+LoNXttJ
	R8CejHLnnkDnoiXCVYGv0vH6PGwUf75KDf+120UA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654605899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7ylU5UmZ3WUar+tzJCG10XpJ7/z+2vSJmssgcA9RSA4=;
	b=XpCNlfzKhm4cAWWn0k//pQL3xRJcrYtK9wrU3II/hg9I4iMiyCXrW3sRSPVTluhj
	R5GgfowxaoWDjMReWrwV/NOv5ndyVIa3mfinT8SHIUUbX9mslmnTSZmoGdKumQsGOJy
	NDNQ8P0nxhXH3vcjNIOF2r7omP2EIgKJ8BCZcjrw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813e3265e9-77054e0e-2d4f-4e14-b0f2-9294be0d96ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74f71ed29c70e926288577dca1a7e9aad9fdd1be26fc1c0c4be73fbb161d0b70
Date: Tue, 7 Jun 2022 12:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654605899
