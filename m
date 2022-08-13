Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 976F9658
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660371653;
	h=To:Subject:From:Message-Id:Date;
	bh=svomwjv8wyB/GoR4zUDZ7YfaGEBikXSNxd9yA1ah+fc=;
	b=hDv29SXzYYB8PvfXOjsYnyA9JrTjgrxNHRHojvCavhElchnS/lPt78gzezm3rogO
	hb6mPzOAhgoY1hJdkJAI8EXoqerVUFJMJD8o+s5PbBbxkSnSmlfFNSErMh8uWT/cjvX
	EDCmaFtl3/x9x4B15BMjNrajLDGuYiquXH45xLf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660371653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=svomwjv8wyB/GoR4zUDZ7YfaGEBikXSNxd9yA1ah+fc=;
	b=ckPz0ks59MynwpvWnAIQukIkYo19t1J21xLNOvQLCDqZm0GAcOqmfxOHljS6e1nG
	fxe36xAPmW1oOQ7IoG6XPQUzbqU2tXqrKNqkG4qr3FOAhs5kQXNxK82PQ91rBsNwlb1
	8d7CkknrYdpifGcnYCd6GM7rbymlNTK+2AR4sHSc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018295dccfc8-7a06075c-89e4-41f7-b41b-77946f792bfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b4e01c132ec466cd16878bac12b7e8051f6fe108e3d53a9699fe50669930b8b
Date: Sat, 13 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660371652
