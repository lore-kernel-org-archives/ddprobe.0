Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F3F185F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 19:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654370639;
	h=To:Subject:From:Message-Id:Date;
	bh=8QgCq1doqD8O4fl1MfCdB6/nN+nMnar09U/bMlhYNcg=;
	b=YpmjVRGTuNarl5jfo3n0WQjP+FwXg6hCe/PEbevG2jWap0ybtMZhVZsgKQtnAt25
	/VhUboWOmkJI30UeH73buErgVh+I68bs6uN68g4MfqSKN9LUBiAgKJe+99oc1nvqGNl
	BmY8osMZlzvSBkWMXLh0pAOkEcDNVO9tvhMy3jBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654370639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8QgCq1doqD8O4fl1MfCdB6/nN+nMnar09U/bMlhYNcg=;
	b=SXR4O8vupbqiwzxagLOR2Zt1N3WhQ6cKfWKJEpDa/OBqGcfXLFUJLuc5t2DdutjA
	zFDQ8dF84sX8jf1pnb5De47N0zzLXf5UHCFPaZtFNB5JZf2ij3mF3n5Kz/88jOoUCR4
	zzZAq5p04IO+pL/nGFCI9yOM5pTUCjctBqJQQvz0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181302c9dcc-1693ac14-c0b4-493f-a2b5-469887ce118e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fd4fe1a337f587a392385469b045d9b9853abfe31a0bc4ed76913c22095a271
Date: Sat, 4 Jun 2022 19:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654370639
