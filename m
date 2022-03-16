Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91A1838F8
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 17:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647450685;
	h=To:Subject:From:Message-Id:Date;
	bh=ZCWOmLruf/5KC/2VhPLBpxck9Z3/LH3ybY+Qei4agPc=;
	b=bf++SKGpRErKDePXwY0ylJyTPTKLpcMGQbYt3DrD0miq/OB8KBwvv0jM4MsWuXwo
	Y4MJr8AcCKPI8olcAdZq4XHPenoXKAwgnnPxhs2MAYYIsvJZJ7n+N9xsudohZu/5+Yd
	WAF758KocjQwkUXi5QRtunRlQKs/VAuQtzqE/t74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647450685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZCWOmLruf/5KC/2VhPLBpxck9Z3/LH3ybY+Qei4agPc=;
	b=lFdYiTKjXMiT6gsIhoz53pXcuj3OeXwRgm4iOvmrPgotfCnDoyrr1yjC3ge1EKV5
	Zapjl1VbLd8W7SjV+ezkuu3ZMB0Wr4y4374mvtf+YhuRnuxpURfgS3NaTuTCe0RMX9k
	Jpr8dOJ4Nd5cNEKRvvMbZh+8CA0rvxzFI6Og67eQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f93b67db3-94f6971c-a69c-4f13-8590-620659640efd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74fa06e06bbe52d786681095a666280186c9004b0c8125aa6bcaaf5370a53be9
Date: Wed, 16 Mar 2022 17:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647450684
