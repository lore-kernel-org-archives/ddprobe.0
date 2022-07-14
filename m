Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178057E
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657832812;
	h=To:Subject:From:Message-Id:Date;
	bh=JsPtyx1/Q8mXnu+HEct4DfZpcIOdR3QKs6GjGMzJ01E=;
	b=DRb1veiRlS5BD3/NszJ6z6mryPIbQUf9vCue71XPwkp+VYTfFglI7Bm1XqNTSxpx
	U8AsSmLVlRivB1YPu502ISSlFVjgSfTyS/plHHCIZb68kaz9C0zEShyUNuhEq1i8Def
	psSun7T6ls+tkSE11Ab8g/FjWTfLWUnAZo3kHxPg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657832812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JsPtyx1/Q8mXnu+HEct4DfZpcIOdR3QKs6GjGMzJ01E=;
	b=a1WROlYwS0c/S1mi1eVaifGFlT2Hacg2mM0HdDCB3tLh+Yp0tNIP7dJqhxlKoE5S
	7SSioETEjWV8bmTwbxlwPhfT51akvQ77ctvHUyQ8N8C9p4DdyxFLWXQhyeqAulj9IVa
	Mz2z4fFGf7MIrYEK/2NIf47k25nRyL4pywCmNA/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fe892f2e-287f99d9-c2a4-4def-86d5-3a0940e3cbef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1203bc41ba44cdd3cefbf4be467f47f32db1ed1149c3264714da944fa5d732ce
Date: Thu, 14 Jul 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657832812
