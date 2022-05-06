Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792CF7F
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 16:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651854478;
	h=To:Subject:From:Message-Id:Date;
	bh=o2E5qBbWte5lzJPGwyUd+/AdrVhiq/yzc3HiumzAnTg=;
	b=ThbbHYxBpMFJgiAjp3+9zrE4plOI6sRwE2Wr/Sm6pW78DJPuDh65kDGSB2xBsVfe
	G8qKokUP8rZc56gwxVjzELJpopjdC6YfRCyfLcuWzYsWXRFi5BaTWXjQIzww1OOMTIk
	ZUn6EID2UyDjSMq/cJuWj1k8l0Smqz7W31YZkhO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651854478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o2E5qBbWte5lzJPGwyUd+/AdrVhiq/yzc3HiumzAnTg=;
	b=YiSsg9CCHY7zgBfmcf88UlWG75NV0v1JRIetTent9Zfzv9bwxQFnmuXNmUG2Qyv0
	ERFUBCvzPu9BnHDQ6fWWNyMN9Eo/5LoQNltsecC9Ab8Gg+PfM3TgPDXJ7+FIFjmuyeV
	Em2elDKM15l502CHeZY7T6ESBIyVDAAM/nXGt9jg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809a330c1f-92693a11-53c5-40c0-8f68-20302d1be4ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5f0a3ca47cdfe4ba29f3434969b238d34b2c2f14561bb17ae3c48e199ef7642
Date: Fri, 6 May 2022 16:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651854478
