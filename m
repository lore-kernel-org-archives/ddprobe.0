Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A9533C3
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 20:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651005718;
	h=To:Subject:From:Message-Id:Date;
	bh=Zwll/vBBdQ035gHY7ClCl9MAPy/ygPGHzVei2+1yNNo=;
	b=DtAX0aApF5doWFsdGCQxARucuSaBf5JXUmplPqZ73ETWRFXMr+ThCKtSw7X5fPyT
	hKCAiocZAeDZqhyCOOkN7JfJnT8oSbohzPg44ms2JE3AfM0evmOxCcUofPSYPWrVHuT
	SHmipSkUWql/Sevj0xNXBaHawJFwzHCrapnHx6Og=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651005718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zwll/vBBdQ035gHY7ClCl9MAPy/ygPGHzVei2+1yNNo=;
	b=AGCIGSs+05xOjtLZxWIZ1EqkreLrBEb0/Ev/afD50oxtcJ6LpGDzaRbgNL5CxJO8
	qEVzsmXzS1PDy/6jW/KxdW5+LHD25hXMfMSw8D8jnAK0QPo1BKgTLs2WZzQV56lWGy/
	/Vr9egV0P6q/vM82V41q+yjcgWNcxNxxTO654LU4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180679bff00-556e9479-d30b-4d2a-a1da-43e3b75c3956-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e81d16bf4e23e19e0bcf5201429420186d44ae1186896cd1c3d462258cde075
Date: Tue, 26 Apr 2022 20:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651005718
