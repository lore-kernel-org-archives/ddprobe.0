Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2344A6AB9
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 23:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648079278;
	h=To:Subject:From:Message-Id:Date;
	bh=AtIt8HkQtUE36Xbweq09Heo65xCHaa51dPFLdpcq2zw=;
	b=X5TzYBYi91LmgCghvb8JUfOKRhtiSpDIfe018aVAFa3QkEP8HMpj4eR5RPO7XUMN
	ZV187LXtmiDivqcTwz1kMK3qoW4F+AnAPADyGofqjpqVkqYI70LioE+63EXkIad0qYI
	8pz/OWg4+dYCEJVynW79PzaaYMwPyql/N0Qe9dPE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648079278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AtIt8HkQtUE36Xbweq09Heo65xCHaa51dPFLdpcq2zw=;
	b=jOs9S2yhJ4mFqvr5F+wIPrfy4mbp0OxCkeZFNZC2w40GKp4osJGdADAwOB9Nv3RP
	9a0bFC8tKMsqxlyjEPSp/I3kwSVeFKoCA3H/0rqxIuKQU4KFV+9BNSVIVKAlqOT3o/e
	zWegZ4eh8X27EUIUoj6o1qb2HGW5w2d8paumF0WY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb92e10d7-590b2919-595f-4c5d-897d-0bdb4394f797-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7b28f8be14a455257eea9f8734c7f66876f4618fa2d38cd1c6cabdfd2a2c080
Date: Wed, 23 Mar 2022 23:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648079278
