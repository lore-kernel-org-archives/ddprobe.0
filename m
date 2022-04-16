Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F253120F2
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 12:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650112618;
	h=To:Subject:From:Message-Id:Date;
	bh=hCGEuArBolKjAKM6sAFgS6KD6OX0hdaYJsFcC1gl+dg=;
	b=UvRpXkBEqzAqJ5Z+Jwn5ILDmXk0zmkUu6k4hFtsBtD7S1pKn/M2eRn+oNvTzQ4gw
	a/NjVebM8SOhMnfoyBMxly++TXJwBFPx5gCbHXOPJ4cHxNdXDbTNG4xXillns9lP3vN
	DdhRwvYlKheSP4zrGhQe5NGSCr4kYALhPT+KL8i0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650112618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hCGEuArBolKjAKM6sAFgS6KD6OX0hdaYJsFcC1gl+dg=;
	b=OH4J0LbRVi8O7GnTmTnra9bEK7DJ8eI7AN6C29BNiQutCC3UJRB4Y0/DGO4tDa0P
	nasFu3/0lEjWPC64yAIERKGOScJ3YbfmIEH8rRWJXWJZ1HlKQrQFHYLrd4yQqz8T1Bg
	SEEYE8BQRIoXOhSN+OfloM6L89VssNhJs6aKdizQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018032605f11-f6622dc4-ef34-48af-a281-c2166918223b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e11b13937d55cd340f66119bacb102c58b8413de31a8e339adbe3bd159ebc212
Date: Sat, 16 Apr 2022 12:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650112618
