Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5F217C4
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 09:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652262119;
	h=To:Subject:From:Message-Id:Date;
	bh=heZC3HnKIfekhcPYMRjdiqbrxfmBqr+mOkck1tEEBM4=;
	b=AFPf91FPz65pzK4TsK35P3JC4d8tfe6j/MIOUYGP5fCjNChiNFVOfODQ9ZDmTgPr
	q992WNq/xtHm7hzBZQdWeunT877Xyq78DSujdgkKyZSVbrk7u6abaq5fik4jfCt4McZ
	3xBH7s1o9/Dz9H8dd5gICiT+sPaZtlbgHmyUf4R4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652262119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=heZC3HnKIfekhcPYMRjdiqbrxfmBqr+mOkck1tEEBM4=;
	b=Sd6eXF1Q0+9GMww9hOLRR/RFIHT6x2sZCgS6IooN0ESk+lOVz/rftN/xNkiabGo1
	Txt3VV7zCW67lFA+4zMO4WGCARZq+nd3invDh/4A9gh14hWNVoqJ0YxIP9OA2b2d/If
	Q1lD5fy4c5bSPWRt+yyEENY/Bboz2wwg8iJq8rAM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b27f275a-2e250793-6b90-4145-8a45-431ff25f36ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aac4b863d991d1762843e4ddf2f2a095a5e0a2ee98e5b0775f3dd8ad89e0b844
Date: Wed, 11 May 2022 09:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652262119
