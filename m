Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F9B7E2
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 05:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651815778;
	h=To:Subject:From:Message-Id:Date;
	bh=zFNfopNTEVDlPH9AU/DeaDRqHZE60OchPhb2vD2H/VU=;
	b=iAw201mqmS9T3T5GK2IcAzrJERS2EDUgKPuqZKn3vYQcByIwbXQe/D+y752ttu1Z
	TrKAcsLgzPLNy3TwivvTT6re0LX98QQXKGdQHQCwsvjDcEjnFixw9C52pKMEvyoM6Yn
	stWtR/QrImU8f1rdw3vEOBR8f6olQ6R4nwxAoU+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651815778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zFNfopNTEVDlPH9AU/DeaDRqHZE60OchPhb2vD2H/VU=;
	b=V20YuC7c3M7V6jNfbGCLP+iWuPAJUAiuMbSdtM8ju7za9TqnCciZbSZeltWBFosq
	eK3+xViGPbjkaKv2WuSgg8ZoWKaEh40X6QjzaQpsjRbRt0255P8I8UjjvhYj8R1U0aV
	2Tq6udqteDwP2qfqlecEH+Q/8uLyNwCATDyMcc9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018097e487c4-eb16baa3-5d0f-4ca5-a094-000b42edb72c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c36bc75be8c5ea86670bb73272c60bc5d5e3b11b3217e7d44d6216cfd567966d
Date: Fri, 6 May 2022 05:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651815778
