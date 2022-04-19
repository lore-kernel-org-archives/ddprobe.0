Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F791364
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 15:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650383218;
	h=To:Subject:From:Message-Id:Date;
	bh=eWtDgXOrOLOLHZfmQR8UkQPGK5OQvnWoQU5xRogC8+w=;
	b=kC6eSMaeEivVkDSwkaSRQVcSZifTQYuys+W7+5rE60fF9bzXUnACdslU6/tecAks
	vmwE42pLiOdt2uubmx4hRoRkH6TStqvm3Dq51y1niRzjAOQQuOezvSgqx9jkedgmTmG
	ac4IV0ONFr1/G8I94ZFvnZO7S+paOH2ECxn1+dSY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650383218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eWtDgXOrOLOLHZfmQR8UkQPGK5OQvnWoQU5xRogC8+w=;
	b=J0BQgL+nM6WSslddqXGINVl5dQKER61gDGEyoYfW2cG7nOb8pI4kmgGHew2WfYWN
	ZaWu/5Pa1uZ8lMMVFue5nllM0ZrDBGlUg/01NwbHkjrdZk2Jb8rLWbyWcyKBIvxO0dT
	pstTa5DqnYm/IkMa+DtX80fVUG3XR6vR76KHyG+Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018042816677-a0f4435d-95b4-4200-8aa1-1aaa88f80811-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e469302390a5f04f85954821f2269e0aaf83fbfed89ebfe42c3e5fef82f9ae37
Date: Tue, 19 Apr 2022 15:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650383218
