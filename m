Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163C123BD
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 09:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654508579;
	h=To:Subject:From:Message-Id:Date;
	bh=1/HU0KAax+/Q0zh+R0hwa3Li4D0qioYNnK7WK4FfW74=;
	b=Z6YfCZBkOQckWFGjJsj3js6kYD03/6/saDFEUfWvXZuMGpZjGiGmYI9ZlmGX/72I
	y46kDvld2dGLvsH6pXldfMHWAENwpqUaDoCO940H7qm5nk7q3F4/TMoXGEd6uS4BR84
	oGAnJqZfu3Xa14+GB5Z40GZMSenLZGPe41s/LWsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654508579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1/HU0KAax+/Q0zh+R0hwa3Li4D0qioYNnK7WK4FfW74=;
	b=T313G3+v7lCtsS0PaK3ZDyV4xDWalRjsF8h2XRw4Bd5p7T39/q/gSxUQ6CguOj7B
	2uIzHGAs/4SX3zFs/m66jJTUBatQAnaOtdiczV4BiRvgS1b8JgSSBjhm34oHgyvXnLm
	9jG3A7vz5CF/5doB0FzS34gKsTT/Hfww4717911Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181386569a0-6123d035-9d5f-4c34-95b1-0ccf6f4c5b90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4b3babfc75731e993fda4e7fafb9019203f5fa80585781957bdd49eed750e29
Date: Mon, 6 Jun 2022 09:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654508579
