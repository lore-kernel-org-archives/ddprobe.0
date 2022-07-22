Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462555C85
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 23:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658534212;
	h=To:Subject:From:Message-Id:Date;
	bh=kXSxqr6LktbHgS4cdCJalfZ21n+ySokeyR5ZQFVf/c4=;
	b=gbem1nyAxF1BbZy3mpEqjt6LUWptai9lcz02DcpiDWNMcFdX17GIjlKvXl8h97vA
	ayNWsbdRYorgNkjC4l4nh4Uef40pGcFdg+Vn6GxENuIStUu6iH99wugl/1LiBAwAqdh
	cF25Gx9AblRE8X9gcquAPWTIhSsgnZnE9OifFfzI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658534212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kXSxqr6LktbHgS4cdCJalfZ21n+ySokeyR5ZQFVf/c4=;
	b=JvQ/Q/8mBk6jC9gQB+JJi2ULS5aYVkqvjbSA1T3CQRRf0YEbsi1SzHuHs2gs8RgW
	qI0pvttR1paPsFXVUbqVxnuPl6TCS4O4rnWhFKwQc8B3Gqpc9+9Yc+O/g+5lROa3rb9
	bDzASfzFnGdTkFd+OzAS89nyBOnfEkNyfUs+APsg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822857b2a4-040c2414-beb0-42ca-827f-6e78dc6a856d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d3b427d3600d8a81b8947fb7e0a282039a266b3cf43883457f64b5e46e97f6f
Date: Fri, 22 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658534212
