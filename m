Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085AC2100
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 08:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652429459;
	h=To:Subject:From:Message-Id:Date;
	bh=4OoGu/38ndFO/m4gyb/eBGe9BHe1g/vQQuwtyVfU2U8=;
	b=TRzGzccQ6UjomNetvqxaNIQz/i3e+yViXj1auZaa4Bx7B9JiGo6r16S/4mxZDUWl
	nh9aLX3gXcf7gR8n93i0iJKj9UOcdYrPp3iwiEf3lZt1JTajqrnNXB+ZA+2qqNA+wio
	IPhwBu1EElePR4jLFaRdJNri3wFzOcJOPFGCX0fU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652429459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4OoGu/38ndFO/m4gyb/eBGe9BHe1g/vQQuwtyVfU2U8=;
	b=ADSWx8AeuW8H9frG4vJ2+YWM2i4dHUZKQCFZwkaj4TpyvfqLEHQM+ZNDCUzDq5Nq
	SYiKM8LVkTitEuW8fCBo7UzbUW8yhN0VOpM8EaoTisTvumWFmAkiSa78mDTODmAFo88
	/1a65MQsVuIA0h8hJSUNDyfvcYqb+RsKho0wMh/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bc788f9c-d75f2d71-7952-4e79-bf5e-09d3825f98ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbace308af934cc4c9ccf145ea05a194c11a3f05dab41468d43773740479b9b7
Date: Fri, 13 May 2022 08:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652429459
