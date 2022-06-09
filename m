Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7193210
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 15:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654789979;
	h=To:Subject:From:Message-Id:Date;
	bh=gHhP0dopJSay54AM8vVTz1J+X7tesnP/1Z7Gj0jhQcw=;
	b=WWpCxeild91fjlEtWrpHUq3AXt1BkB7SDXCem5UYMSIqQW6RsPpIHOngkZBdK4dH
	yNQ1xHI8pgcR396UbO2hhSVUvKPKTG/Z1BdLRkx5WTVD/MG7MFQD3u8uCHuuz9S8WiI
	/HUvFGvxw6yLUwJKvHgdEa/jJt6bG4Jfa22kCFnI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654789979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gHhP0dopJSay54AM8vVTz1J+X7tesnP/1Z7Gj0jhQcw=;
	b=XiB+fVSWn44CX53kzEyWIjXgcdU2OnxPRaPFSCuUWjcCHh+48CVRO55uREEsh7AA
	+NEDw1NfsrZ5iKioCDKc6bUCph5SQ+aacytj1Ms22+OnGfRVBHV+NXsG09WcTlIJPi7
	CuNLkKxFgwaeTQI7nH53183g1aaT6x8iwl0teAKg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181492b3c7c-b8143f1d-c201-48d7-968d-40c8a5871d49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8040c34f1cc1db63e46eac07403060d814b832a20899c3d8fc4dcde23d7368b
Date: Thu, 9 Jun 2022 15:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654789979
