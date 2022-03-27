Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274D715A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 02:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648346878;
	h=To:Subject:From:Message-Id:Date;
	bh=gDLFKBPuaN38SoJ8RpQ2RllSsy8/CM+EJkLFBWYHQe0=;
	b=L3ygCaX6gRsVYPOaBtjM8cHdXy4ByYawjjn9vGFDcZwrYObHGEBeTclUCaOpwYnj
	8P/IoIuwjAdNf9Df0Sd5CUGqf3XMrxK6XSForhEBzrydA0S83Ra1XmMkSHNakBjuEkr
	PUdroS3oNSYkrN+NePMkPk/I+YHF7SS6IbM7d6Ps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648346878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gDLFKBPuaN38SoJ8RpQ2RllSsy8/CM+EJkLFBWYHQe0=;
	b=bi3pveV8XKWaVucc3ymI8bqWlgfkvRldfyu8YN0sIHoF6NNzYPX3wFpoZEBuJE2Z
	rzzDMaAThtOrOJ6z3rKVD/DxVhDaWN9EExV7isxgljeyLjYGVffYG8opbB/uZlbw3yO
	L41J+3gFgMhStiUWvtsdAREAUszfVDujJnZJO2Ok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc921514f-09b6c14f-a57b-45de-aa15-93cc9faba1cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d22bfff357a4bc506bd1a9f8389ba18b140e0ff8a3032cb70ff3980acd7c5ed
Date: Sun, 27 Mar 2022 02:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648346878
