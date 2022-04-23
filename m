Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D3E15A3
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 08:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650703138;
	h=To:Subject:From:Message-Id:Date;
	bh=wZW6Vb9pN+oSnS3Y3HRXwukIlho0MPsnv3tbOvrfEcs=;
	b=d4nh5psG1NsdK8lJhP4FIKt7AHGUgg6LGB1zebtJ7hWwM/GefML6UtuVi/23zA9n
	pYEF1qx5MBL/Xc8ccfbeos8h2ZUMeYZMZuZJS1Uc02/s+vOOWq73bQHcTmez/l5oVYe
	Q3c7PvXwXWqzp2yKiYpxSzeayX8E0kUxeLlXqMZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650703138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wZW6Vb9pN+oSnS3Y3HRXwukIlho0MPsnv3tbOvrfEcs=;
	b=T14Yi2Q/a/nAvkHbubr6gnxTgIWV9Dg5EsyxG/pMTZe1RESrgGXd74xeT2FXaWCv
	98izNgYdUF/lzIBO77LeICji2AIWU/aevR8vHr3DKOVkrsh2Wfr034P3Jb4KCJBM494
	bpdb8wRWILhqSWxcpfgkKVhEzmFZcHNGV5wSDP3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805592fdb5-b8b50f8c-b6eb-488f-adb0-36fac6d8528b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fa63b913293aacb7a3a192a183be37c108fe3819abdcb90a6984848522585fc
Date: Sat, 23 Apr 2022 08:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650703138
