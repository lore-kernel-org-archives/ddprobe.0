Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34ED7210B
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 10:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652437019;
	h=To:Subject:From:Message-Id:Date;
	bh=VNxkVR0WW9mNf78+B5MBV8Vg7WQ1PA+9EluwA+NFE6Q=;
	b=SL73sqoCvYyTmEdtOmTxb/t9hys2XE/jxu/P1cPX900mRl0B2/fixFjN84+ws3EK
	pVpvrPHO6lUPwrtG3Bo6+LG0RmhMlEI1BldxoKrT4KNFOEEGIyZpr59fLmlAVqIeV30
	YrM0OhE4RiIyvk8NCMMkxUON6GkfGzIRXd3qi1Tk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652437019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VNxkVR0WW9mNf78+B5MBV8Vg7WQ1PA+9EluwA+NFE6Q=;
	b=HIfomvOB+VrwwGSPj095hMAAOjepbT/1tBQbjZHhjc8R3Bi2WCD1PsQnM06NdG4o
	L92W7p1hP4oPr8fQWI8tFrpUfvpFGJL8fBvhOxcgOsSE5uBIQnIf9IlEIuMy3d/Yt7C
	t6iUI01D6d6/IfdSesPrhIDu4Z4LhFe9NvNUN91I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bcebea5c-c2ab2fd5-d58b-40a5-898e-4b8287dcf184-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33f271997663a483a1699bc9985afe74a8e212ae076f66b63742e9b5e6a86571
Date: Fri, 13 May 2022 10:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652437019
