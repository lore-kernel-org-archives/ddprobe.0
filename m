Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C21315A9
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 04:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657688212;
	h=To:Subject:From:Message-Id:Date;
	bh=ZU6O+jNQBOLQXdnXkrsBdKrrH6ovjCqq5fH6THYM4pg=;
	b=PsL5/rr3Bkowaut8j8unmH2+ap2+CUP+4QWC8p3hlH8jJ2V+9oNU/15H4dRC/TSG
	bY+Gq+jDtvpHTigOAtMMe31VvAIae8g6EgoidRLZJfpPE2nVORj2kQrgxwEMEjUEimT
	3mPUZtzhZC4TXustaoRqq6xw9eEsAsZiuCUJ9gOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657688212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZU6O+jNQBOLQXdnXkrsBdKrrH6ovjCqq5fH6THYM4pg=;
	b=hBoUvvtsjE6ly39qHsAp87l7gF6SAImf/dqW6DdodICVoGs8jDdFMNis+nwj3aoW
	hYh25gspJsraUcmmK+sOohdfdbP4x94GnLa+z60r577x4Uxu3bHKNWzCF4b0uIkbsNQ
	dqLrR6mA/W3zM2EciRMyazV7ySaHgTDQ8IpgSVxE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f5eac3f5-72256be5-7dc2-4cd7-82ae-e69cd200885e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45f97da71e9182c98660b7043080df9b3c99bdfb98d846f3dbc7faff16521a58
Date: Wed, 13 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657688212
