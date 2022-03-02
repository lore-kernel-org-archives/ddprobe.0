Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7007A
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646232384;
	h=To:Subject:From:Message-Id:Date;
	bh=B8FB0Rt4iX5vkE+I0ky+LQljQ2JIMdxkbsiTECsb7ac=;
	b=lfMHgrU8tveD0tZZzLFy+ydVZvy7+3CfdGAf88QdlRQiGA3tk0/9sxcH7u52ABt3
	zdoR88o4ZsG0PMcu1zTO0FhSu0Iz40pWXNzrm77H5+hw018g5QKwB7/X0sY2wu8/XQ0
	0FtrAFdF7G9XU/w2Na6z2T6MXHFibE1+KtCmd+Lg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646232384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B8FB0Rt4iX5vkE+I0ky+LQljQ2JIMdxkbsiTECsb7ac=;
	b=BPF3AtYCNkeuqRsDa2q36w9wUoERxGfEvsZbelGeULKCt9P2bRoeZdHX7oWT4Rjy
	74coKA7ik1J3acRBEee78lDil3WDLUOlvvss4PlCVbXMwhYisKimLpy3OKj3zhv/3zV
	sgXtKvalenS+HulbVazqlK99o9iojsre/xk0JgEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4b18b4e1-08f83a7e-333f-4004-b108-9e275168a49f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8616fb0c70c28a803742f415b478c46051c930a33fe25f883dd1ec6bb8848ea
Date: Wed, 2 Mar 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646232384
