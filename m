Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF8517C1
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 10:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651485958;
	h=To:Subject:From:Message-Id:Date;
	bh=ySnNmlY/cVsTqrBmEl5Izcb8KaWZiwFuIJSX2SoZFMQ=;
	b=QupHXlwgsqcGBBHdD78H2ItPElZq4NcVb1+GquN0A5QtJE5NsQmGm4M/e5zHEF3O
	euvId35Xmz+R7AbCNctS/xE5jIIPOjpmMoXgwSGnAaQAVW4uThR+RXrMJ3C3V0yMW7R
	ZXm4qNgETWqh30SMKRouyjC5G1T5N+p0RWyH9Nv4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651485958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ySnNmlY/cVsTqrBmEl5Izcb8KaWZiwFuIJSX2SoZFMQ=;
	b=gUd0l6l9wivIzR8ib3lEH14EGoOI5kleljb+g3X2+LmfX4twoS43KZCJRz5i4ElE
	dGOY0/k0ay8gnUAyibKQRQBIdkWt6fHVuGEloyGh/w+AKN93hGmgUy9htDYT/3zaqHd
	Fmj2Alw6F9FFiMkl63LMbNqAJjUUuQe8vezEUib4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180843be068-e8243c25-8102-46cb-9393-69ba4d89839c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 197f539ce2b0a4f29fa1d4fd011a3d41a76a23a69ef9ac2d578fa3f45effe256
Date: Mon, 2 May 2022 10:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651485958
