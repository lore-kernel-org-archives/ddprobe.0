Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B4F7A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 07:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650353938;
	h=To:Subject:From:Message-Id:Date;
	bh=jGUEuOwwmFfEa0d64jc8Cee/g16J0gzcGaEO7rEFFgc=;
	b=md5C/Tb2lVd0egSQnUlhfsxhlYeLcU6rwOziSUanm8vhGEuDaTNj0DZiBfKzuiy8
	mmCoYPGCD7OpoDjwl12GsaQ4s/fHk3f62HlD/vRVdAiyKHHNnelOMm7Ao+0JXxtGTI/
	QibXrPm39umFRCDFDYMoqrRYmRIUvhJKPntJx5v8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650353938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jGUEuOwwmFfEa0d64jc8Cee/g16J0gzcGaEO7rEFFgc=;
	b=fpqRBLOBLqQx7dDsdik8Ucr4fLBfSeKzKokXw/LjQ0oh/fEcOaeNQ1qfTUg5+SXr
	3zid9RszjzCPfp3EDkUJa/4WslB1Hs7Yzbj6JD3fiDPprwGwK4R26Nwh13Uyij5QdKO
	7tISFRMFXWP/RdqGIriBuPyci6bfmpR4N25f0VsI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018040c29f76-fe3a008c-ada2-4ff6-bfcd-ef59029abb1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0eaa743a3fb4c95aefd3aae6655f6b72347f99f9172779a0f1d60d10ab973ba4
Date: Tue, 19 Apr 2022 07:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650353938
