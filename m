Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A88441A
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 23:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656806212;
	h=To:Subject:From:Message-Id:Date;
	bh=Dyd/CV05++LxlMztjKgjUr/9xcrT+6Vhpc/Nl/kHqUk=;
	b=O1wcyOomhRXTdvjLu/zcalDlOig05w5z6tVnP0Pw3cCs39JHBsE4EznelsCwAWU3
	H1zgOPAHtSi6c1pz3KRrvNz//D9q1zDK6/yz9+iqIN+KTLmX/bwgJPjqN/h56I5tl0E
	0nlfUBZ3SKIAIHsfOSi4lpihUHJRH+Gha/gbOhXw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656806212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dyd/CV05++LxlMztjKgjUr/9xcrT+6Vhpc/Nl/kHqUk=;
	b=C65YdRN1nJBaexZ/V/NbopCFn5GUlgyNo46r+KUyZ81/wPQ04GijhK9XntGtDls1
	2k8GOGnadNN8ehs9uSHKgnj4uLW463OrdVluXtK26DvPMYGHL1qXOs21vspZSFcR7r0
	TZ5yHv7guAmWgSpjitFFUCPOpoJ/cUhHqs5zXsig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c15882a0-a6e717c2-e676-44cb-a34d-a8846a5e2905-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d838d4022f0c8651aadf98ac285379b23d78e0a303e0f2086ed2254c843cf0cd
Date: Sat, 2 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656806212
