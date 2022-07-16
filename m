Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91B87A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 13:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657979212;
	h=To:Subject:From:Message-Id:Date;
	bh=qwgjPDrw/xgxroN+YSWGq4myT+KV/NM6PTEnA9jOp6E=;
	b=FrrJQfoTNBMpBkccm0Y27//RCwBp+MSslYRqeYzMzS95Z0JorbfUF8Kj9VH5pj21
	vhn0LdzUiM6fVTpBHHnqP3EUAe+crH/E+JLWGzcSRdtgU8yJpvHvyUUO2SVfgpBY5Hu
	S+XionMBC5VkA4RVDGaNht7gvS7PG2QYQEkXRPHw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657979212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qwgjPDrw/xgxroN+YSWGq4myT+KV/NM6PTEnA9jOp6E=;
	b=J2JtpKkziSr3O3jsleSR/sLpryVQTDLL8sUUkkiDwo7YPSxjtKm5HaE6jnnheFhC
	erG3d58yUMHlPJ/MS7RMTR0+HPxonI+i+HBSsfhujS0rhMqZiYdNRaTBmPJIRamTAee
	0Z4M6ihigRMxr7prkV9N4f1Pw+xgxGt6P4dmhi6U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182074311e6-8b9fa0c9-cd68-49b4-9091-c83b74d6e352-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8a5a92e5f126db20a6160fd0502946113a9ee505408b4e37719a08dadd93e00
Date: Sat, 16 Jul 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657979212
