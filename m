Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D687C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659699052;
	h=To:Subject:From:Message-Id:Date;
	bh=EqnaQaRwb5vE0s74esP59oHykvWXoh13qRQEq3QOcPQ=;
	b=ajMzsFOOac6PzM72pVP23G69C1GEpr/xY+8k2vRjBcT+3SxuKQqG7DsaZV4OUCSX
	9nujV4m6JdpYSqLAsycuHkjol3iGcfBkWDWQQ94RKcQ2JLJR3tzh3RKgK+S6Yl5A86I
	ME/raxE10VmIr5n58kPZEMCnF0vQsAVST0yEbduU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659699052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EqnaQaRwb5vE0s74esP59oHykvWXoh13qRQEq3QOcPQ=;
	b=KcgkgI6FjU2INNm8U9Sia0Obj+tbfbglQBTQ9SnOezqzvz9UP+yjnDn5iTUUVpme
	GWZhZLBbgc7etASvM1PkjojbrPwS+C9vZVf49EXA9yeRr+gYnc78A21fIssx++2aeYj
	pFBkL/uo+D/EJcSN9WlDke0QenR1nFfVc/87ApUo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826dc5c04e-0cbfc703-351f-4533-bd02-86fd8aa4a4aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c11dafb9dd8da90f594303dc640760663a0bedb7ed019cfe737c7f790e3fd4a
Date: Fri, 5 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659699052
