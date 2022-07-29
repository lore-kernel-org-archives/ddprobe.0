Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F142E3D9C
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659102053;
	h=To:Subject:From:Message-Id:Date;
	bh=swtTIbOe5lX5si7KgqIuraKD8Ek3jfGFaPY/gSAgLGc=;
	b=Xx684eSt9FdVUWRBQ5hCvdS/NHuAf/FcVJ7I44Xg5FjWxkUR7QArOJqgzivZSb7g
	hLxyI0JdTCtPj0IsSWLM3GonNUHZUhDGIpS0EYMSuULjW+fRlz/2XcRIhYHuMlPX+Ae
	AYP58gJ+NbHd8JWLkkOlC8e/ZntfXmcd2BsnsEpk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659102053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=swtTIbOe5lX5si7KgqIuraKD8Ek3jfGFaPY/gSAgLGc=;
	b=G8u8HFDlaCWTjRb/XVCjh7sA9PBazpDtL7OmV1lS3SVfQX6508ObrDDsM5caMZhG
	9o5tBC3lEMYxm4LZ8GCHqJ+z/KCsaJ/CliVw+tDn24T/ZaJPz0teD0Q+dBxcInLpxwi
	H4hYrDCS/TiahW0IKE87uh1lqyC9v3N/W2SudOdM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824a3040af-704a6872-dd91-4b2d-96fd-985d6c34c9dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ab1c588e9341366d81cb10933e2e9fdfeecf5c2ca6759b7fb3778d50543a76e
Date: Fri, 29 Jul 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659102052
