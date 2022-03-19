Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8522C17E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647694284;
	h=To:Subject:From:Message-Id:Date;
	bh=SQ+jsSxxR5qj/dnI3hIekGBndNSkgc6UvZh1c7eeYTs=;
	b=AQ8l39lanksTE9YCZfayTDkaaaHYsSDJbpXNW45zPWz6hqHyf/PlBU7Y1H1KoKBy
	avziRtsdYpTBXw1rL7g6bZ7EwWeoFef+uKdJqM5CUdVTu0gfpFVn2uB9pzOxXG5ZwAn
	2fCwyw0owYJ32VvuZ7PY10cNaMj6JKfKOcVz6u1Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647694284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SQ+jsSxxR5qj/dnI3hIekGBndNSkgc6UvZh1c7eeYTs=;
	b=dvwowl+gmuUXhxbFcxclyovLN+PR8Emyum5k6x9wKh9WZIbwvxd6slsqsnWEBPVR
	S2JufHoFQ/y5oy2YDLq9bN1IzbpwOB/CP21VmnT7OhJkA6msz3tfKfYPgoiJXMBAqiN
	fwZt4XkN2tig4TYSvxUGe9wSyBkjJeyrPlcj2z4U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa23b87d6-4f4ca1a3-f920-45c3-be5a-6cacc5c3018e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61b72463fdb1300de9399dc91de7e74d0b7f8bb465bcc735310a18d1b1ebbbcd
Date: Sat, 19 Mar 2022 12:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647694284
