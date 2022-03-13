Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CD4D7A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647130584;
	h=To:Subject:From:Message-Id:Date;
	bh=x+U8mZ2DmGkV2dzz6CjhAeVBkJsv1HLwf8ccY1SlkGk=;
	b=TWvM9E9ITSyK6JckBDpr7K/woUN5VsNni3e01geLeOzVr+SyKaBK9dsjLei/yfEi
	cmjS8CpdmKa7YC3IyerLEshnjcbHRkg4dyHYYeTneYEITWByiE4vnxSThecq+DuYyuD
	zwr0eI7EsKKbaDYMGWaLH7mnIdxM0zPLAySMfePE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647130584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x+U8mZ2DmGkV2dzz6CjhAeVBkJsv1HLwf8ccY1SlkGk=;
	b=G4eTaYVkabJAjs0TGwz1urgJOJhPGRyzF8UhN6VPwhR4dBAHYtc3Zb+31AKFmh10
	oDF6KM6SALkzYX9QzZGHiPdUZYgKcwGqjyN2ftfoaJ/hzRNndwholwNxLhsB52zPbmL
	dj4imRddZeDsa7KMyCdZ5Pfvv+oFkxmoj3W3KD2M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f80a226de-39a8dffb-2fd8-4d4e-8fb9-e6e66ae256b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe81b944dbfe4f9e3540ab0174d81990210ff61d87675fb0d808d0d4435b270e
Date: Sun, 13 Mar 2022 00:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647130584
