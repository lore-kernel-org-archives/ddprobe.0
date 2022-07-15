Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1800020E0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 07:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657871812;
	h=To:Subject:From:Message-Id:Date;
	bh=tODLsDluYviemJ58Xm891itmPRHVePybFsuUJiToNU0=;
	b=juEsYrPKhzCdMVnk+qK88ncTHu8lSzYEyW0pseRzmnyAeulufxFOtqqOLlW4hkao
	5rc0uGBZFFJ8SxSIBRsZor8nEuIdVYJ64wzCw5Gc5ZhrFx61G39LK1EKDxxdTrOWzs2
	AgVrxiq4aJJcHifWostfp2JHu+qHb9cMs/6EbCLA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657871812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tODLsDluYviemJ58Xm891itmPRHVePybFsuUJiToNU0=;
	b=HKpjc2IivO36Iyuq3lhrLo05ooWBoqyNAKiIEpEYyS+VDRKMo20VYgSFx8SioZ+4
	Nx4zzWBRITfwDQ1cO0iguP7Wgc2jWQ/Z7GZ9MoFoQyGMlpbxJuC7J67wC1lZ9+KPIMQ
	Z0N1Y31eilcRMl+ho1NZWAQZpDmBFEHlQ6YDQDls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018200dc46d8-91eec4ba-2f75-4f65-a8d3-3758a5acdd73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e3c304fd062f13faeda18507c442f4e158edecfa129464063cb18b58f8198f6
Date: Fri, 15 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657871812
