Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F16F601C
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658864452;
	h=To:Subject:From:Message-Id:Date;
	bh=ulWkrBWcGnuj9n8v4R9lqCBjczzszMKr0cP9YfdvvLw=;
	b=HunqeKuj90mn56KjyQrsuhN5q8gTu9kiOtQhtdWkdVHkLsJg9MID4GV4Ntbt/vu/
	O+4RjjH0Tyifb7E2PgFbx/638h2NY8fgcoOOrkKzr1Hit60hfiVDnU3/3/UO5dGfHwD
	ktQG9xvPhlMTiTIWqs03EIHZewNyYfxc3BhIYbRA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658864452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ulWkrBWcGnuj9n8v4R9lqCBjczzszMKr0cP9YfdvvLw=;
	b=d2ufAyEvbfcRoihB+oFCeKVY2ND68lLFSgSF7UqeyEJS/GEuTfmXqgfoKirymNWA
	1zgj3JoQUo3ZufETbdcQBpuMtdsEPLDgFLrIM9TWAPHNkPAQ8+byKoo8IzfQ7bVn2Lt
	Dhp+V+opTFCUo+2MptfIvpsoEI1m75tty1l1gqwE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823c06c3cb-dd6b75a1-b068-4476-81c8-8587f555d815-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 999536efc12fddc06627f3776279be6a5d2e0d385f32d3a82b6f36bf0ea9ce73
Date: Tue, 26 Jul 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658864452
