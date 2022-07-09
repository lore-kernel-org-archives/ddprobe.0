Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F03EA4
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 10:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657363612;
	h=To:Subject:From:Message-Id:Date;
	bh=vFcGMcc0HdsW29RJq8i/Al2YEyJE1EKIeBWT+T5Zpik=;
	b=L9XjjZZxKEs4sLiROfDUvsBYgx++UNuRi50msuvho50W5eltJeX4nyUQ6BbxCwbg
	N87HoIR0s8Fy5Rw0CIU6Ai2HxvVKODWldp6rxnPG70bOi/DkKvnCZBZchkAEU2sxF/U
	kzoLEKtzXEIzJuNQpd2GIu4JOzU3C4UsiOmguHy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657363612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vFcGMcc0HdsW29RJq8i/Al2YEyJE1EKIeBWT+T5Zpik=;
	b=AC4EdN6d2vcrQNirqVn5dzrKsx062BtnFPwdh96NcgDCfZzhfFq1Ih6fQDnkpM3y
	O1Vxcl20Ju/LUtnE7TkUZZT0/Gjj8k1lC789EW1u2KSXRNZpRzPybT8BxPPFRYQNgfo
	OC9EcPc+fLl8AGArFRLdKaIAm9ktEK3KWdcquc9o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e291c27a-30796fdf-18d2-4395-b07b-fba4a9234912-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4dd45f37e735e33e9da8c2a436289854d6d51fa4bd5dbb1fd90b4933d36b43b
Date: Sat, 9 Jul 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657363612
