Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F0815BD
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 02:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657767412;
	h=To:Subject:From:Message-Id:Date;
	bh=vtt0GQgJ38VDXkJt7/pugzmr09j22tZd+VXe0DLhD28=;
	b=BZ8Zq11i5HCNaeKd6SSWPBWtilVujXT9P2qsdddejheMpiXd2SOjgjOcD6+MprL+
	ZcOujkfAVeItCwQcJvN4RKmW4Xf9Bf8fB292ezUU1/+skPkWThPjyKb9i8jpT6joc8n
	l9pnAqdtHB8zIRJqfTm4IeLePfrBq3sgiucHXjqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657767412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vtt0GQgJ38VDXkJt7/pugzmr09j22tZd+VXe0DLhD28=;
	b=VCEjV7jLN+VLWLechNCEf8qWefUDHt61HYN2yLsHlhsB7yvs/uJ8jePbakwLDthl
	zfSDUDgyNM20j3eBC0GhrOD3MVXZVL/jR8t3LQz6dwcjG+z12fj/L3Vf/iQWTXZoq85
	6EyYPu8rso3T6sxxWSLMybIPZrc30hWkfCStcxnc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181faa3428d-e37eab90-534e-4c2a-a95c-463deabe06bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a66c398a92196d3a529ad92b067e772cc9061926eb3b3ca83df3e3a059ca81e1
Date: Thu, 14 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657767412
