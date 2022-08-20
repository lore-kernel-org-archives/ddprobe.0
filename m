Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654417B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660967452;
	h=To:Subject:From:Message-Id:Date;
	bh=E86+xiDqIWKvIQpSjgf8gzf010+kbXHSKjVSs/pG/5U=;
	b=cLI7K5hafav850teyrDIoK0GJJEHERUBKZz90XAR/iBseKanSnIT9U7lwfHOM1ML
	JdnyQkEn3RzIKoT+gYZfSqajENmJAm82JqZ+QU4rjq/xHyJyNx5GtmCkQZNDM3VJ2ST
	B1FqB7/QMFRMPFCfXtLy8p5OusJpNoT/lfvur2Jg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660967452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E86+xiDqIWKvIQpSjgf8gzf010+kbXHSKjVSs/pG/5U=;
	b=HZW42blZ6GxD+4fiilou9ivJTOhnkdudT3uVEmaNcjjONApQVOnmvuVXn78/MVdj
	rpwoC8snVcfgJ5iXKYiOnvePRsiqrhd5XvpS/rUWw3Bn0nwwiELxX6jGq3orEx6HN2g
	yTMPj+YR99vOaqcB9vA4kPBEIpladtllUYHTc8yU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b95fff50-7473e7fd-2890-4272-b871-def2871ebdea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4affd0239ffbea1475ff0d646b0e61a9f36603f237aa33979f80e7b00f31097e
Date: Sat, 20 Aug 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660967452
