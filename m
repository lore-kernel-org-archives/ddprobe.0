Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109A8811
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 13:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651842718;
	h=To:Subject:From:Message-Id:Date;
	bh=cVjpzRAoDvo0DwPb2MP4IMWV60Yd38Wry1Jw2e0rdNg=;
	b=ABJesVhE4NdP2oZUOOx1U/u2F4XybC+GZ69HHDgxbV7vk8/jws65LjBFqunHkVTk
	J4oi1GHP7dUMEgeKlxJ/+dwr2Q1FWRjBMWAn9vXUXy005SosOuUxuaky/Yr0gdh0deK
	rF3G2iFq6XuseVtGh8FeFqj2nfDAVRPwKRM/3ios=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651842718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cVjpzRAoDvo0DwPb2MP4IMWV60Yd38Wry1Jw2e0rdNg=;
	b=NmaOOlkjZEmnDc1YTqalTn86F1vkC5I/LcyE7TtW0qZfHA+clYLujSv4s8lWRLS7
	eiopwXmY72Zojyur9wSPmGoUj42teTO3um7AsSoo8gHnukOR5b/hUACc7ZJfmuzgSRd
	eJw2I01TOXSQ7ZLgyT30iRIRA/YVOcMvLkDxVwZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180997f9a3d-4bbb5b58-a92d-48fb-92c2-15f27bd5e026-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55ad56d0d02a7b121db28bc11fc2839387b46c47c42cefbb7b50baa35ed5c826
Date: Fri, 6 May 2022 13:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651842718
